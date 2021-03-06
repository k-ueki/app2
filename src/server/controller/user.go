package controller

import (
	"encoding/json"
	"net/http"

	"github.com/k-ueki/app2/src/server/service"
)

func (u *DBHandler) UserSearch(w http.ResponseWriter, r *http.Request) (int, interface{}, error) {
	type Request struct {
		Name string `json:"disp_name"`
	}
	req := Request{}
	if err := json.NewDecoder(r.Body).Decode(&req); err != nil {
		return http.StatusBadRequest, nil, err
	}

	userService := service.NewUserService(u.DB)
	user, err := userService.GetInfoByDispName(req.Name)
	if err != nil {
		return http.StatusInternalServerError, nil, err
	}

	return http.StatusOK, user, nil
}
