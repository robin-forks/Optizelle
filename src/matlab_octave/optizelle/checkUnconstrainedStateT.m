% Check that we have an unconstrained state
function checkUnconstrainedStateT(name,value)

    % Check for the appropriate fields
    if ~(checkFields({ ...
        'eps_grad', ...
        'eps_dx', ...
        'stored_history', ...
        'iter', ...
        'iter_max', ...
        'glob_iter', ...
        'glob_iter_max', ...
        'glob_iter_total', ...
        'opt_stop', ...
        'trunc_iter', ...
        'trunc_iter_max', ...
        'trunc_iter_total', ...
        'trunc_orthog_storage_max', ...
        'trunc_orthog_iter_max', ...
        'trunc_stop', ...
        'trunc_err', ...
        'eps_trunc', ...
        'algorithm_class', ...
        'PH_type', ...
        'H_type', ...
        'norm_gradtyp', ...
        'norm_dxtyp', ...
        'x', ...
        'grad', ...
        'dx', ...
        'x_old', ...
        'grad_old', ...
        'dx_old', ...
        'oldY', ...
        'oldS', ...
        'f_x', ...
        'f_xpdx', ...
        'msg_level', ...
        'safeguard_failed_max', ...
        'safeguard_failed', ...
        'safeguard_failed_total', ...
        'alpha_x', ...
        'alpha_x_qn', ...
        'delta', ...
        'eta1', ...
        'eta2', ...
        'ared', ...
        'pred', ...
        'alpha0', ...
        'alpha', ...
        'c1', ...
        'ls_iter', ...
        'ls_iter_max', ...
        'ls_iter_total', ...
        'eps_ls', ...
        'dir', ...
        'kind', ...
        'f_diag', ...
        'L_diag', ...
        'x_diag', ...
        'dscheme', ...
        'eps_kind'}, ...
        value))
        error(sprintf( ...
            'The %s argument must have type Unconstrained.State.t.',name));
    end
end
